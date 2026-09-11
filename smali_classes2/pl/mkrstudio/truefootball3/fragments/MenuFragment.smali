.class public Lpl/mkrstudio/truefootball3/fragments/MenuFragment;
.super Landroidx/fragment/app/Fragment;
.source "MenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;
    }
.end annotation


# instance fields
.field mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
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

    .line 92
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 94
    :try_start_0
    move-object v0, p1

    check-cast v0, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuFragment;->mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 96
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

    const p3, 0x7f0a0072

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 31
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lpl/mkrstudio/truefootball3/helpers/ViewHelper;->getScreenHeight(Landroid/app/Activity;)I

    move-result p2

    const p3, 0x7f0800c0

    .line 33
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 34
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$1;

    invoke-direct {v0, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {p3, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    div-int/lit8 p2, p2, 0x5

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p3, 0x7f0800be

    .line 42
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 43
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$2;

    invoke-direct {v0, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {p3, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p3, 0x7f0800bc

    .line 51
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 52
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$3;

    invoke-direct {v0, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {p3, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p3, 0x7f0800bf

    .line 60
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 61
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$4;

    invoke-direct {v0, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$4;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {p3, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p3, 0x7f0800cd

    .line 69
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 70
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$5;

    invoke-direct {v0, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$5;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {p3, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p3, 0x7f0800bd

    .line 78
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 79
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$6;

    invoke-direct {v0, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$6;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {p3, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-object p1
.end method
