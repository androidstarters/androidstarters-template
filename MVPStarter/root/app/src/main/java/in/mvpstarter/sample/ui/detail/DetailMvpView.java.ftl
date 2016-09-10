package ${packageName}.ui.detail;

import ${packageName}.data.model.Pokemon;
import ${packageName}.data.model.Statistic;
import ${packageName}.ui.base.MvpView;

public interface DetailMvpView extends MvpView {

    void showPokemon(Pokemon pokemon);

    void showStat(Statistic statistic);

    void showProgress(boolean show);

    void showError();

}