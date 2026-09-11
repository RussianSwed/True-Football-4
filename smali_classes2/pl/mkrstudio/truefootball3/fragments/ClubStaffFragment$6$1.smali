.class Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6$1;
.super Ljava/lang/Object;
.source "ClubStaffFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6;

.field final synthetic val$eid:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6;Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;)V
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

    .line 207
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6$1;->val$eid:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

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

    .line 211
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6$1;->val$eid:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->initLists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6;->this$0:Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->initClubStaffList(Landroid/view/View;)V

    :cond_0
    return-void
.end method
