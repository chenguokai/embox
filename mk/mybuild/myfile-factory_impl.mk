# Generated by Xpand using M2Make template.

# Implementation of factory for 'myFile' model.

ifndef __mybuild_myfile_factory_impl_mk
__mybuild_myfile_factory_impl_mk := $(lastword $(MAKEFILE_LIST))

# Implements methods for creating objects of 'myFile' model.
define class-MyFileFactoryImpl
	$(super MyFileFactory)

	$(super EFactoryImpl)

	$(method createPackage,
		$(new MyPackageImpl))

	$(method createImport,
		$(new MyImportImpl))

	$(method createInterface,
		$(new MyInterfaceImpl))

	$(method createFeature,
		$(new MyFeatureImpl))

	$(method createModule,
		$(new MyModuleImpl))

	$(method createFilename,
		$(new MyFilenameImpl))
endef

$(def_all)

endif # __mybuild_myfile_factory_impl_mk

