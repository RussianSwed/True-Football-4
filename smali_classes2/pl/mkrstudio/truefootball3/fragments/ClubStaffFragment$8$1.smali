.class Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$8$1;
.super Ljava/lang/Object;
.source "ClubStaffFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$8;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$8;

.field final synthetic val$eid:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$8;Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$eid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$8$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$8;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$8$1;->val$eid:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 279
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$8$1;->val$eid:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->initLists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 280
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$8$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$8;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$8;->this$0:Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$8$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$8;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$8;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->initClubStaffList(Landroid/view/View;)V

    .line 281
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$8$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$8;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$8;->this$0:Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$8$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$8;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$8;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->initPeopleToHireList(Landroid/view/View;)V

    :cond_0
    return-void
.end method
