.class public Lpl/mkrstudio/truefootball3/fragments/EmployeeInfoFragment;
.super Landroidx/fragment/app/Fragment;
.source "EmployeeInfoFragment.java"


# instance fields
.field employee:Lpl/mkrstudio/truefootball3/objects/Employee;

.field toHire:Z


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Employee;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "employee",
            "toHire"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 20
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/EmployeeInfoFragment;->employee:Lpl/mkrstudio/truefootball3/objects/Employee;

    .line 21
    iput-boolean p2, p0, Lpl/mkrstudio/truefootball3/fragments/EmployeeInfoFragment;->toHire:Z

    return-void
.end method


# virtual methods
.method initView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    return-void
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

    const p3, 0x7f0a003d

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/EmployeeInfoFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method
