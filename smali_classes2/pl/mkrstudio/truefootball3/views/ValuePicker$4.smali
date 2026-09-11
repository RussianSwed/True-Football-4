.class Lpl/mkrstudio/truefootball3/views/ValuePicker$4;
.super Ljava/lang/Object;
.source "ValuePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/views/ValuePicker;->initValuePicker(JLandroid/content/SharedPreferences;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field final synthetic val$currency:Ljava/lang/String;

.field final synthetic val$et:Landroid/widget/EditText;

.field final synthetic val$modifier:F

.field final synthetic val$money:Z


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;ZLandroid/widget/EditText;FLjava/lang/String;)V
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
            "val$money",
            "val$et",
            "val$modifier",
            "val$currency"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$4;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-boolean p2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$4;->val$money:Z

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$4;->val$et:Landroid/widget/EditText;

    iput p4, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$4;->val$modifier:F

    iput-object p5, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$4;->val$currency:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 185
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$4;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v0, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$4;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget v2, v2, Lpl/mkrstudio/truefootball3/views/ValuePicker;->step:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    .line 186
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$4;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->calculateStep()V

    .line 187
    iget-boolean p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$4;->val$money:Z

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$4;->val$et:Landroid/widget/EditText;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$4;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v0, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    long-to-float v0, v0

    iget v1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$4;->val$modifier:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$4;->val$currency:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$4;->val$et:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$4;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v1, v1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$4;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->dialogs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/dialogs/IPickerDialog;

    .line 193
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$4;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v1, v1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    invoke-interface {v0, v1, v2}, Lpl/mkrstudio/truefootball3/dialogs/IPickerDialog;->onValueChanged(J)V

    goto :goto_1

    :cond_1
    return-void
.end method
