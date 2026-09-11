.class Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;
.super Ljava/lang/Object;
.source "PlayerOptionsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;Landroid/content/Context;Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;ILpl/mkrstudio/truefootball3/objects/Player;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;

.field final synthetic val$currency:Ljava/lang/String;

.field final synthetic val$modifier:F

.field final synthetic val$pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

.field final synthetic val$player:Lpl/mkrstudio/truefootball3/objects/Player;

.field final synthetic val$position:I

.field final synthetic val$squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

.field final synthetic val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;Lpl/mkrstudio/truefootball3/objects/Player;FLjava/lang/String;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;ILpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$player",
            "val$modifier",
            "val$currency",
            "val$ud",
            "val$squadAdapter",
            "val$position",
            "val$pid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    iput p3, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->val$modifier:F

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->val$currency:Ljava/lang/String;

    iput-object p5, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p6, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->val$squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    iput p7, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->val$position:I

    iput-object p8, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->val$pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

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
            "v"
        }
    .end annotation

    .line 249
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 250
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0a0035

    .line 251
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f08010f

    .line 253
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 254
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c015d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v3

    iget v4, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->val$modifier:F

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    int-to-long v3, v3

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->val$currency:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0803d0

    .line 256
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 257
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08022d

    .line 270
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 271
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8$2;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
