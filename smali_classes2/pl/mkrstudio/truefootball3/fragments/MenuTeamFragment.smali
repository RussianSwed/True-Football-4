.class public Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment;
.super Landroidx/fragment/app/Fragment;
.source "MenuTeamFragment.java"


# instance fields
.field mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

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

    .line 115
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 117
    :try_start_0
    move-object v0, p1

    check-cast v0, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment;->mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 119
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
    .locals 1
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

    const p3, 0x7f0a0075

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 26
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lpl/mkrstudio/truefootball3/helpers/ViewHelper;->getScreenHeight(Landroid/app/Activity;)I

    move-result p2

    const p3, 0x7f0800d1

    .line 29
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 30
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment$1;

    invoke-direct {v0, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {p3, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    div-int/lit8 p2, p2, 0x5

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p3, 0x7f0800d7

    .line 38
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 39
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment$2;

    invoke-direct {v0, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {p3, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p3, 0x7f0800d9

    .line 47
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 48
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment$3;

    invoke-direct {v0, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {p3, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p3, 0x7f0800dc

    .line 56
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 57
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment$4;

    invoke-direct {v0, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment$4;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {p3, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p3, 0x7f0800cb

    .line 65
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 66
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment$5;

    invoke-direct {v0, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment$5;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {p3, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p3, 0x7f0800da

    .line 74
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 75
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment$6;

    invoke-direct {v0, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment$6;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {p3, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p3, 0x7f0800b7

    .line 83
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 84
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment$7;

    invoke-direct {v0, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment$7;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {p3, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p3, 0x7f0800af

    .line 92
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 93
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment$8;

    invoke-direct {v0, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment$8;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {p3, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p3, 0x7f0800c3

    .line 101
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 102
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment$9;

    invoke-direct {v0, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment$9;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {p3, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-object p1
.end method
