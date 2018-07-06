from anaconda_oe import TestAnacondaOE

class TestAnaconda(TestAnacondaOE):
    def setUpLocal(self):
        super(TestAnaconda, self).setUpLocal()
        self.anaconda_distro = "wrlinux-installer"
        self.anaconda_recipe = 'wrlinux-image-installer'
