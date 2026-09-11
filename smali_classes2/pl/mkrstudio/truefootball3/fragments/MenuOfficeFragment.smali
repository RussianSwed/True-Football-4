.class public Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;
.super Landroidx/fragment/app/Fragment;
.source "MenuOfficeFragment.java"


# instance fields
.field adLoaded:Z

.field businessmanButton:Lpl/mkrstudio/truefootball3/views/TileButton;

.field mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adLoaded"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 26
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->adLoaded:Z

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 114
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 116
    :try_start_0
    move-object v0, p1

    check-cast v0, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 118
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnMenuButtonClickedListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0a0074

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 34
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lpl/mkrstudio/truefootball3/helpers/ViewHelper;->getScreenHeight(Landroid/app/Activity;)I

    move-result p2

    const p3, 0x7f0800d0

    .line 36
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 37
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$1;

    invoke-direct {v1, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {p3, v1}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    div-int/lit8 p2, p2, 0x5

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p3, 0x7f0800b9

    .line 45
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 46
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$2;

    invoke-direct {v1, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {p3, v1}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p3, 0x7f0800aa

    .line 54
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 55
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$3;

    invoke-direct {v1, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {p3, v1}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p3, 0x7f0800d6

    .line 63
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 64
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$4;

    invoke-direct {v1, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$4;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {p3, v1}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p3, 0x7f0800d2

    .line 72
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 73
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$5;

    invoke-direct {v1, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$5;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {p3, v1}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p3, 0x7f0800a5

    .line 81
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 82
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$6;

    invoke-direct {v1, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$6;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {p3, v1}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p3, 0x7f0800a6

    .line 90
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 91
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$7;

    invoke-direct {v1, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$7;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {p3, v1}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v1, 0x7f0800a7

    .line 99
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->businessmanButton:Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 100
    iget-boolean v1, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->adLoaded:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 101
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->setAdEnabled(Z)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->setAdEnabled(Z)V

    .line 105
    :goto_0
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p3, 0x7f080183

    .line 107
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-object p1
.end method

.method public setAdEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->businessmanButton:Lpl/mkrstudio/truefootball3/views/TileButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 125
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->setBusinessmanIcon()V

    .line 126
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->businessmanButton:Lpl/mkrstudio/truefootball3/views/TileButton;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$8;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$8;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;)V

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0700f0

    .line 133
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    .line 134
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->businessmanButton:Lpl/mkrstudio/truefootball3/views/TileButton;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$9;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$9;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;)V

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :goto_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->businessmanButton:Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/views/TileButton;->setEnabled(Z)V

    return-void
.end method

.method public setBusinessmanIcon()V
    .locals 6

    .line 145
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->businessmanButton:Lpl/mkrstudio/truefootball3/views/TileButton;

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 147
    sget-object v1, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$10;->$SwitchMap$pl$mkrstudio$truefootball3$enums$Faces:[I

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/enums/Faces;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const v1, 0x7f0700f4

    const v2, 0x7f0700ee

    const v3, 0x7f0700eb

    const v4, 0x7f0700e8

    const v5, 0x7f0700f1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 185
    :pswitch_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->businessmanButton:Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->businessmanButton:Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    goto :goto_0

    .line 179
    :pswitch_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->businessmanButton:Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    goto :goto_0

    .line 176
    :pswitch_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->businessmanButton:Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    goto :goto_0

    .line 173
    :pswitch_4
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->businessmanButton:Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    goto :goto_0

    .line 170
    :pswitch_5
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->businessmanButton:Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v0, v5}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    goto :goto_0

    .line 167
    :pswitch_6
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->businessmanButton:Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v0, v5}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    goto :goto_0

    .line 164
    :pswitch_7
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->businessmanButton:Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v0, v5}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    goto :goto_0

    .line 161
    :pswitch_8
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->businessmanButton:Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    goto :goto_0

    .line 158
    :pswitch_9
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->businessmanButton:Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    goto :goto_0

    .line 155
    :pswitch_a
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->businessmanButton:Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    goto :goto_0

    .line 152
    :pswitch_b
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->businessmanButton:Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v0, v5}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    goto :goto_0

    .line 149
    :pswitch_c
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->businessmanButton:Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
