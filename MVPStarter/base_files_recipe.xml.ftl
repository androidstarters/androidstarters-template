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



</recipe>
