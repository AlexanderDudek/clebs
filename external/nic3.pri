clebsCheck(nic3) {
    win32 {
        isEmpty(NIC3ROOT):NIC3ROOT = $$BASEDIR/../api/nic3
        isEmpty(NIC3BINARIESDIR):NIC3BINARIESDIR = $$NIC3ROOT/binaries
        isEmpty(NIC3PYTHONDIR):NIC3PYTHONDIR = $$NIC3ROOT/python

        exists($${NIC3ROOT}):CLEBS_DEPENDENCIES *= nic3
    }

    unix {
    }
}

clebsDependency(nic3) {
    win32 {
    }

    unix {
    }
}

clebsInstall(nic3) {
    win32 {
        nic3bininstall.files = $$NIC3BINARIESDIR/_nic3.pyd $$NIC3BINARIESDIR/boost_python.dll $$NIC3BINARIESDIR/ftd2xx.dll
        nic3bininstall.path = $$BINDIR

        nic3cochlearinstall.files = $$NIC3PYTHONDIR/cochlear/*.py
        nic3cochlearinstall.path = $$BINDIR/cochlear

        nic3nic3install.files = $$NIC3PYTHONDIR/cochlear/nic3/*.py $$NIC3PYTHONDIR/cochlear/nic3/AcousticStimulus.pyc
        nic3nic3install.path = $$BINDIR/cochlear/nic3

        INSTALLS *= nic3bininstall nic3cochlearinstall nic3nic3install
    }
}

