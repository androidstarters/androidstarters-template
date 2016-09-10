<recipe>
  <instantiate
  	from="app/src/main/java/in/mvpstarter/sample/data/DataManager.java.ftl"
  	to="${escapeXmlAttribute(srcOut)}/data/DataManager.java" />

  <instantiate
  	from="app/src/main/java/in/mvpstarter/sample/data/model/NamedResource.java.ftl"
  	to="${escapeXmlAttribute(srcOut)}/data/model/NamedResource.java" />

  <instantiate
  	from="app/src/main/java/in/mvpstarter/sample/data/model/Pokemon.java.ftl"
  	to="${escapeXmlAttribute(srcOut)}/data/model/Pokemon.java" />

  <instantiate
  	from="app/src/main/java/in/mvpstarter/sample/data/model/PokemonListResponse.java.ftl"
  	to="${escapeXmlAttribute(srcOut)}/data/model/PokemonListResponse.java" />

  <instantiate
  	from="app/src/main/java/in/mvpstarter/sample/data/model/Sprites.java.ftl"
  	to="${escapeXmlAttribute(srcOut)}/data/model/Sprites.java" />

  <instantiate
  	from="app/src/main/java/in/mvpstarter/sample/data/model/Statistic.java.ftl"
  	to="${escapeXmlAttribute(srcOut)}/data/model/Statistic.java" />

  <instantiate
  	from="app/src/main/java/in/mvpstarter/sample/data/remote/MvpStarterService.java.ftl"
  	to="${escapeXmlAttribute(srcOut)}/data/remote/MvpStarterService.java" />

  <instantiate
    from="app/src/main/java/in/mvpstarter/sample/data/remote/MvpStarterServiceFactory.java.ftl"
    to="${escapeXmlAttribute(srcOut)}/data/remote/MvpStarterServiceFactory.java" />

  <instantiate
  	from="app/src/main/java/in/mvpstarter/sample/injection/ActivityContext.java.ftl"
  	to="${escapeXmlAttribute(srcOut)}/injection/ActivityContext.java" />

  <instantiate
    from="app/src/main/java/in/mvpstarter/sample/injection/ApplicationContext.java.ftl"
    to="${escapeXmlAttribute(srcOut)}/injection/ApplicationContext.java" />

  <instantiate
    from="app/src/main/java/in/mvpstarter/sample/injection/ConfigPersistent.java.ftl"
    to="${escapeXmlAttribute(srcOut)}/injection/ConfigPersistent.java" />

  <instantiate
    from="app/src/main/java/in/mvpstarter/sample/injection/PerActivity.java.ftl"
    to="${escapeXmlAttribute(srcOut)}/injection/PerActivity.java" />

  <instantiate
    from="app/src/main/java/in/mvpstarter/sample/injection/PerFragment.java.ftl"
    to="${escapeXmlAttribute(srcOut)}/injection/PerFragment.java" />

  <instantiate
    from="app/src/main/java/in/mvpstarter/sample/injection/component/ActivityComponent.java.ftl"
    to="${escapeXmlAttribute(srcOut)}/injection/ActivityComponent.java" />

  <instantiate
    from="app/src/main/java/in/mvpstarter/sample/injection/component/ApplicationComponent.java.ftl"
    to="${escapeXmlAttribute(srcOut)}/injection/ApplicationComponent.java" />

  <instantiate
    from="app/src/main/java/in/mvpstarter/sample/injection/component/ConfigPersistentComponent.java.ftl"
    to="${escapeXmlAttribute(srcOut)}/injection/ConfigPersistentComponent.java" />

  <instantiate
    from="app/src/main/java/in/mvpstarter/sample/injection/component/FragmentComponent.java.ftl"
    to="${escapeXmlAttribute(srcOut)}/injection/FragmentComponent.java" />

    <instantiate
    from="app/src/main/java/in/mvpstarter/sample/injection/module/ActivityModule.java.ftl"
    to="${escapeXmlAttribute(srcOut)}/injection/ActivityModule.java" />

  <instantiate
    from="app/src/main/java/in/mvpstarter/sample/injection/module/ApplicationModule.java.ftl"
    to="${escapeXmlAttribute(srcOut)}/injection/ApplicationModule.java" />

  <instantiate
    from="app/src/main/java/in/mvpstarter/sample/injection/module/FragmentModule.java.ftl"
    to="${escapeXmlAttribute(srcOut)}/injection/FragmentModule.java" />

</recipe>
