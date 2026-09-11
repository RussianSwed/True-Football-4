.class Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog$1;
.super Ljava/lang/Object;
.source "UpgradeTribuneDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Tribune;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;

.field final synthetic val$seatsVP:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field final synthetic val$tribune:Lpl/mkrstudio/truefootball3/objects/Tribune;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;Lpl/mkrstudio/truefootball3/views/ValuePicker;Lpl/mkrstudio/truefootball3/objects/Tribune;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$seatsVP",
            "val$tribune"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog$1;->val$seatsVP:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog$1;->val$tribune:Lpl/mkrstudio/truefootball3/objects/Tribune;

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

    .line 45
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog$1;->val$seatsVP:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->getLongValue()J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog$1;->val$tribune:Lpl/mkrstudio/truefootball3/objects/Tribune;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getType()Lpl/mkrstudio/truefootball3/enums/TribuneType;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;->startUpgrading(ILpl/mkrstudio/truefootball3/enums/TribuneType;)V

    .line 46
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;->dismiss()V

    return-void
.end method
