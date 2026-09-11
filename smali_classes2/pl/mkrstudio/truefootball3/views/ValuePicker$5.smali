.class Lpl/mkrstudio/truefootball3/views/ValuePicker$5;
.super Ljava/lang/Object;
.source "ValuePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/views/ValuePicker;->initTicketValuePicker(ILandroid/content/SharedPreferences;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field final synthetic val$currency:Ljava/lang/String;

.field final synthetic val$et:Landroid/widget/EditText;

.field final synthetic val$fragment:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;

.field final synthetic val$modifier:F


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;Landroid/widget/EditText;FLjava/lang/String;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V
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
            "val$et",
            "val$modifier",
            "val$currency",
            "val$fragment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$5;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$5;->val$et:Landroid/widget/EditText;

    iput p3, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$5;->val$modifier:F

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$5;->val$currency:Ljava/lang/String;

    iput-object p5, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$5;->val$fragment:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;

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

    .line 213
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$5;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v0, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    const-wide/16 v2, 0x2

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x1

    cmp-long p1, v0, v4

    if-lez p1, :cond_0

    .line 214
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$5;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v0, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    .line 215
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$5;->val$et:Landroid/widget/EditText;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$5;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v0, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    long-to-float v0, v0

    iget v1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$5;->val$modifier:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$5;->val$currency:Ljava/lang/String;

    invoke-static {v0, v1}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->formatSmallSum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$5;->val$fragment:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->updateTicketPrices()V

    :cond_0
    return-void
.end method
