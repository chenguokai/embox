# Generated by Xpand using M2Make template.

# Metamodel implementation for 'myFile' package.

ifndef __mybuild_myfile_metamodel_impl_mk
__mybuild_myfile_metamodel_impl_mk := $(lastword $(MAKEFILE_LIST))

# Creates and initializes contents of 'myFile' meta model.
define class-MyFileMetaModelImpl
	$(super MyFileMetaModel)

	$(super EMetaModelImpl)

	# Define properties as fields.

	$(property-field Package,
		$(invoke createMetaClass,Package))
	$(property-field Package_imports,
		$(invoke createMetaReference,$(get Package),Package_imports))
	$(property-field Package_entities,
		$(invoke createMetaReference,$(get Package),Package_entities))

	$(property-field Import,
		$(invoke createMetaClass,Import))
	$(property-field Import_importName,
		$(invoke createMetaAttribute,$(get Import),Import_importName))

	$(property-field Entity,
		$(invoke createMetaClass,Entity))
	$(property-field Entity_package,
		$(invoke createMetaReference,$(get Entity),Entity_package))

	$(property-field Interface,
		$(invoke createMetaClass,Interface))
	$(property-field Interface_features,
		$(invoke createMetaReference,$(get Interface),Interface_features))

	$(property-field Feature,
		$(invoke createMetaClass,Feature))
	$(property-field Feature_interface,
		$(invoke createMetaReference,$(get Feature),Feature_interface))
	$(property-field Feature_providedBy,
		$(invoke createMetaReference,$(get Feature),Feature_providedBy))
	$(property-field Feature_requiredBy,
		$(invoke createMetaReference,$(get Feature),Feature_requiredBy))

	$(property-field Module,
		$(invoke createMetaClass,Module))
	$(property-field Module_static,
		$(invoke createMetaAttribute,$(get Module),Module_static))
	$(property-field Module_abstract,
		$(invoke createMetaAttribute,$(get Module),Module_abstract))
	$(property-field Module_depends,
		$(invoke createMetaReference,$(get Module),Module_depends))
	$(property-field Module_dependent,
		$(invoke createMetaReference,$(get Module),Module_dependent))
	$(property-field Module_provides,
		$(invoke createMetaReference,$(get Module),Module_provides))
	$(property-field Module_requires,
		$(invoke createMetaReference,$(get Module),Module_requires))

	$(property-field Named,
		$(invoke createMetaClass,Named))
	$(property-field Named_name,
		$(invoke createMetaAttribute,$(get Named),Named_name))

	$(property-field Extendable,
		$(invoke createMetaClass,Extendable))
	$(property-field Extendable_subTypes,
		$(invoke createMetaReference,$(get Extendable),Extendable_subTypes))
	$(property-field Extendable_superType,
		$(invoke createMetaReference,$(get Extendable),Extendable_superType))
	$(property-field Extendable_allSubTypes,
		$(invoke createMetaReference,$(get Extendable),Extendable_allSubTypes))
	$(property-field Extendable_allSuperTypes,
		$(invoke createMetaReference,$(get Extendable),Extendable_allSuperTypes))

	$(property-field Filename,
		$(invoke createMetaClass,Filename))

	# Initialize the objects and relations between them.

	$(invoke initMetaClass,$(get Package),
		Package,$(get Named),)
	$(invoke initMetaReference,$(get Package_imports),
		imports,0,,$(get Import),,changeable containment)
	$(invoke initMetaReference,$(get Package_entities),
		entities,0,,$(get Entity),$(get Entity_package),changeable containment)

	$(invoke initMetaClass,$(get Import),
		Import,,)
	$(invoke initMetaAttribute,$(get Import_importName),
		importName,0,1,changeable)

	$(invoke initMetaClass,$(get Entity),
		Entity,$(get Named),abstract)
	$(invoke initMetaReference,$(get Entity_package),
		package,0,1,$(get Package),$(get Package_entities),changeable container)

	$(invoke initMetaClass,$(get Interface),
		Interface,$(get Entity) $(get Extendable),)
	$(invoke initMetaReference,$(get Interface_features),
		features,0,,$(get Feature),$(get Feature_interface),changeable containment)

	$(invoke initMetaClass,$(get Feature),
		Feature,$(get Named) $(get Extendable),)
	$(invoke initMetaReference,$(get Feature_interface),
		interface,0,1,$(get Interface),$(get Interface_features),changeable container)
	$(invoke initMetaReference,$(get Feature_providedBy),
		providedBy,0,,$(get Module),$(get Module_provides),changeable)
	$(invoke initMetaReference,$(get Feature_requiredBy),
		requiredBy,0,,$(get Module),$(get Module_requires),changeable)

	$(invoke initMetaClass,$(get Module),
		Module,$(get Entity) $(get Extendable),)
	$(invoke initMetaAttribute,$(get Module_static),
		static,0,1,changeable)
	$(invoke initMetaAttribute,$(get Module_abstract),
		abstract,0,1,changeable)
	$(invoke initMetaReference,$(get Module_depends),
		depends,0,,$(get Module),$(get Module_dependent),changeable)
	$(invoke initMetaReference,$(get Module_dependent),
		dependent,0,,$(get Module),$(get Module_depends),changeable)
	$(invoke initMetaReference,$(get Module_provides),
		provides,0,,$(get Feature),$(get Feature_providedBy),changeable)
	$(invoke initMetaReference,$(get Module_requires),
		requires,0,,$(get Feature),$(get Feature_requiredBy),changeable)

	$(invoke initMetaClass,$(get Named),
		Named,,abstract)
	$(invoke initMetaAttribute,$(get Named_name),
		name,0,1,changeable)

	$(invoke initMetaClass,$(get Extendable),
		Extendable,,abstract)
	$(invoke initMetaReference,$(get Extendable_subTypes),
		subTypes,0,,$(get Extendable),$(get Extendable_superType),changeable)
	$(invoke initMetaReference,$(get Extendable_superType),
		superType,0,1,$(get Extendable),$(get Extendable_subTypes),changeable)
	$(invoke initMetaReference,$(get Extendable_allSubTypes),
		allSubTypes,0,,$(get Extendable),$(get Extendable_allSuperTypes),volatile derived transient)
	$(invoke initMetaReference,$(get Extendable_allSuperTypes),
		allSuperTypes,0,,$(get Extendable),$(get Extendable_allSubTypes),volatile derived transient)

	$(invoke initMetaClass,$(get Filename),
		Filename,,)

	# Bind objects to instance classes and features to properties.

	$(invoke bindMetaClass,$(get Package),MyPackage)
	$(invoke bindMetaFeature,$(get Package_imports),imports)
	$(invoke bindMetaFeature,$(get Package_entities),entities)

	$(invoke bindMetaClass,$(get Import),MyImport)
	$(invoke bindMetaFeature,$(get Import_importName),importName)

	$(invoke bindMetaClass,$(get Entity),MyEntity)
	$(invoke bindMetaFeature,$(get Entity_package),package)

	$(invoke bindMetaClass,$(get Interface),MyInterface)
	$(invoke bindMetaFeature,$(get Interface_features),features)

	$(invoke bindMetaClass,$(get Feature),MyFeature)
	$(invoke bindMetaFeature,$(get Feature_interface),interface)
	$(invoke bindMetaFeature,$(get Feature_providedBy),providedBy)
	$(invoke bindMetaFeature,$(get Feature_requiredBy),requiredBy)

	$(invoke bindMetaClass,$(get Module),MyModule)
	$(invoke bindMetaFeature,$(get Module_static),isStatic)
	$(invoke bindMetaFeature,$(get Module_abstract),isAbstract)
	$(invoke bindMetaFeature,$(get Module_depends),depends)
	$(invoke bindMetaFeature,$(get Module_dependent),dependent)
	$(invoke bindMetaFeature,$(get Module_provides),provides)
	$(invoke bindMetaFeature,$(get Module_requires),requires)

	$(invoke bindMetaClass,$(get Named),MyNamed)
	$(invoke bindMetaFeature,$(get Named_name),name)

	$(invoke bindMetaClass,$(get Extendable),MyExtendable)
	$(invoke bindMetaFeature,$(get Extendable_subTypes),subTypes)
	$(invoke bindMetaFeature,$(get Extendable_superType),superType)
	$(invoke bindMetaFeature,$(get Extendable_allSubTypes),allSubTypes)
	$(invoke bindMetaFeature,$(get Extendable_allSuperTypes),allSuperTypes)

	$(invoke bindMetaClass,$(get Filename),MyFilename)

endef

$(def_all)

endif # __mybuild_myfile_metamodel_impl_mk

