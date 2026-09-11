.class Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1$3;
.super Ljava/lang/Object;
.source "EmployeeInfoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;Landroid/app/Dialog;)V
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

    .line 134
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1$3;->this$1:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 137
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1$3;->this$1:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1$3;->this$1:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->employee:Lpl/mkrstudio/truefootball3/objects/Employee;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1$3;->this$1:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->hireEmployee(Lpl/mkrstudio/truefootball3/objects/Employee;Landroid/content/Context;)V

    .line 138
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1$3;->this$1:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->initLists:Z

    .line 139
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 140
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1$3;->this$1:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->dismiss()V

    return-void
.end method
