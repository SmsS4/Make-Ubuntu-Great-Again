from dataclasses import dataclass
from typing import List


@dataclass
class Package:
    name: str
    commands: List[str]
    category: str
    def get_install(self):
        return '// \n'.join(
            [f'echo "installing {self.name}"']
            + self.commands
            + [f'echo "installed {self.name}"']
        )

class PackageBuilder:
    def __init__(self):
        self.data = {}
        self.data['commands'] = []

    def set_name(self, name: str):
        self.data['name'] = name

    def set_category(self, category: str):
        self.data['category'] = category

    def add_command(self, command: str):
        self.data['commands'].append(command)

    def build(self) -> Package:
        return Package(**self.data)


def main():
    with open("README.md") as file:
        single_cmd = False
        packages: List[Package] = []
        category: str = ""
        # [1:] if because of header
        lines = [line for line in map(str.strip, file.readlines()) if line][1:]
        i = 0
        while i != len(lines):
            if lines[i].startswith('##'):
                category = lines[i].split('##')[-1].strip()
                i += 1
            elif lines[i].startswith('#'):
                pb = PackageBuilder()
                pb.set_name(lines[i].split('#')[-1].strip())
                pb.set_category(category)
                i += 1
                while not lines[i].startswith('#') and not lines[i].startswith('```'):
                    pb.add_command(lines[i])
                    i += 1
                packages.append(pb.build())
            elif lines[i].startswith('```'):
                i += 1
                continue
            else:
                cmd = lines[i]
                if 'apt' in cmd:
                    sltd = cmd.split('install')
                    assert len(sltd) == 2, sltd
                    cmd = sltd[0] + " install -y " + sltd[1]
                packages.append(
                    Package(
                        lines[i].split()[-1],
                        [cmd],
                        category,
                    )
                )
                i += 1
    with open("installer.sh", "w") as installer:
        for package in packages:
            while True:
                inp = input(f'install {package.name}?')
                if inp == 'y' or inp == 'Y':
                    installer.write(package.get_install() + "\n")
                    break
                elif inp == 'n' or inp == 'N':
                    break
                else:
                    print('wtf?')

if __name__ == "__main__":
    main()
