.class Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;
.super Ljava/lang/Object;
.source "YouthPlayerOptionsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/adapters/YouthSquadAdapter;ILpl/mkrstudio/truefootball3/objects/YouthPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog;

.field final synthetic val$position:I

.field final synthetic val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

.field final synthetic val$youthPlayer:Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

.field final synthetic val$youthSquadAdapter:Lpl/mkrstudio/truefootball3/adapters/YouthSquadAdapter;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog;Lpl/mkrstudio/truefootball3/objects/YouthPlayer;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/adapters/YouthSquadAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$youthPlayer",
            "val$ud",
            "val$youthSquadAdapter",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;->val$youthPlayer:Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;->val$youthSquadAdapter:Lpl/mkrstudio/truefootball3/adapters/YouthSquadAdapter;

    iput p5, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;->val$position:I

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
            "v"
        }
    .end annotation

    .line 46
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a0035

    .line 48
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f08010f

    .line 50
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0158

    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0803d0

    .line 53
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 54
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08022d

    .line 74
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 75
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1$2;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
