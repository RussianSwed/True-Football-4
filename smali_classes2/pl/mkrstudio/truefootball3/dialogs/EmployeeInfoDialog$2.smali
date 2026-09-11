.class Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;
.super Ljava/lang/Object;
.source "EmployeeInfoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

.field final synthetic val$currency:Ljava/lang/String;

.field final synthetic val$modifier:F

.field final synthetic val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;FLjava/lang/String;Lpl/mkrstudio/truefootball3/objects/UserData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$modifier",
            "val$currency",
            "val$ud"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    iput p2, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;->val$modifier:F

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;->val$currency:Ljava/lang/String;

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 181
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 182
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0a0035

    .line 183
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f08010f

    .line 185
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 186
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c015d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->employee:Lpl/mkrstudio/truefootball3/objects/Employee;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Employee;->getMonthlySalary()J

    move-result-wide v3

    const-wide/16 v5, 0x3

    mul-long v3, v3, v5

    long-to-float v3, v3

    iget v4, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;->val$modifier:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    int-to-long v3, v3

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;->val$currency:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0803d0

    .line 188
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 189
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08022d

    .line 199
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 200
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2$2;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
