.class Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;
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
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;Lpl/mkrstudio/truefootball3/objects/UserData;FLjava/lang/String;)V
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
            "val$ud",
            "val$modifier",
            "val$currency"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    iput p3, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;->val$modifier:F

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;->val$currency:Ljava/lang/String;

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

    .line 90
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->employee:Lpl/mkrstudio/truefootball3/objects/Employee;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Employee;->getType()Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    move-result-object p1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->ASSISTANT:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    const v1, 0x7f080259

    const v2, 0x7f0a0033

    const v3, 0x7f08010f

    const/4 v4, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getAssistant()Lpl/mkrstudio/truefootball3/objects/Employee;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-virtual {p1, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 93
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 95
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0c0667

    .line 96
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 98
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 99
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->employee:Lpl/mkrstudio/truefootball3/objects/Employee;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Employee;->getType()Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    move-result-object p1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->GOALKEEPER_TRAINER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getGoalkeeperTrainer()Lpl/mkrstudio/truefootball3/objects/Employee;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 108
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {p1, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 110
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 112
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0c0668

    .line 113
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 115
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 116
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1$2;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 126
    :cond_1
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-virtual {p1, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a0035

    .line 128
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 130
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 131
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    iget-object v5, v5, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->employee:Lpl/mkrstudio/truefootball3/objects/Employee;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Employee;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->employee:Lpl/mkrstudio/truefootball3/objects/Employee;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Employee;->getMonthlySalary()J

    move-result-wide v5

    long-to-float v3, v5

    iget v5, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;->val$modifier:F

    mul-float v3, v3, v5

    float-to-int v3, v3

    int-to-long v5, v3

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;->val$currency:Ljava/lang/String;

    invoke-static {v5, v6, v3}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0803d0

    .line 133
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 134
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1$3;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1$3;-><init>(Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08022d

    .line 143
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 144
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1$4;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1$4;-><init>(Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method
