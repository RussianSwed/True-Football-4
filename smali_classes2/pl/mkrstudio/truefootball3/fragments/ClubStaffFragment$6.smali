.class Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6;
.super Ljava/lang/Object;
.source "ClubStaffFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->initClubStaffList(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;

.field final synthetic val$employees:Ljava/util/List;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;Ljava/util/List;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$employees",
            "val$view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6;->this$0:Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6;->val$employees:Ljava/util/List;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1",
            "arg2",
            "arg3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 206
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6;->this$0:Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object p4, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6;->val$employees:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/Employee;

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p4}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Employee;Z)V

    .line 207
    new-instance p2, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6$1;

    invoke-direct {p2, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6;Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;)V

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 217
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->show()V

    return-void
.end method
