.class Lpl/mkrstudio/truefootball3/views/ValuePicker$8;
.super Ljava/lang/Object;
.source "ValuePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/views/ValuePicker;->initSeatsPicker(Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field final synthetic val$dialog:Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;

.field final synthetic val$et:Landroid/widget/EditText;

.field final synthetic val$maxValue:I


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;ILandroid/widget/EditText;Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;)V
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
            "val$maxValue",
            "val$et",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$8;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput p2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$8;->val$maxValue:I

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$8;->val$et:Landroid/widget/EditText;

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$8;->val$dialog:Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;

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

    .line 255
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$8;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v0, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iget p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$8;->val$maxValue:I

    int-to-long v4, p1

    cmp-long p1, v0, v4

    if-gez p1, :cond_0

    .line 256
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$8;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v0, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    .line 257
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$8;->val$et:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$8;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v1, v1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$8;->val$dialog:Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$8;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v0, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;->addNotes(I)V

    :cond_0
    return-void
.end method
