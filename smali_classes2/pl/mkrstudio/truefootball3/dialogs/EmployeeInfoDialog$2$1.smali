.class Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2$1;
.super Ljava/lang/Object;
.source "EmployeeInfoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 192
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object p1

    new-instance v0, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->employee:Lpl/mkrstudio/truefootball3/objects/Employee;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Employee;->getMonthlySalary()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    mul-long v2, v2, v4

    neg-long v2, v2

    const-string v4, "contractTerminatePenalty"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 193
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->employee:Lpl/mkrstudio/truefootball3/objects/Employee;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->terminateContractWithEmployee(Lpl/mkrstudio/truefootball3/objects/Employee;)V

    .line 194
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->initLists:Z

    .line 195
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 196
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->dismiss()V

    return-void
.end method
