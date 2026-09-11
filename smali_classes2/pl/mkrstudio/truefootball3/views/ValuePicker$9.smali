.class Lpl/mkrstudio/truefootball3/views/ValuePicker$9;
.super Ljava/lang/Object;
.source "ValuePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/views/ValuePicker;->initIntensityPicker(BLpl/mkrstudio/truefootball3/objects/Training;BLjava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field final synthetic val$et:Landroid/widget/EditText;

.field final synthetic val$i:B

.field final synthetic val$modifier:I

.field final synthetic val$training:Lpl/mkrstudio/truefootball3/objects/Training;

.field final synthetic val$valuePickers:Ljava/util/List;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;ILandroid/widget/EditText;BLpl/mkrstudio/truefootball3/objects/Training;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$modifier",
            "val$et",
            "val$i",
            "val$training",
            "val$valuePickers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput p2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->val$modifier:I

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->val$et:Landroid/widget/EditText;

    iput-byte p4, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->val$i:B

    iput-object p5, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->val$training:Lpl/mkrstudio/truefootball3/objects/Training;

    iput-object p6, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->val$valuePickers:Ljava/util/List;

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

    .line 277
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v0, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-lez p1, :cond_8

    .line 278
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v0, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    .line 279
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v0, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->disableLeftButton()V

    .line 280
    :cond_0
    iget p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->val$modifier:I

    if-lez p1, :cond_1

    .line 281
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->val$et:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v1, v1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " (+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->val$modifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->val$et:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v1, v1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :goto_0
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->val$i:B

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 302
    :cond_2
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->val$training:Lpl/mkrstudio/truefootball3/objects/Training;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v0, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->setMental(B)V

    goto :goto_1

    .line 299
    :cond_3
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->val$training:Lpl/mkrstudio/truefootball3/objects/Training;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v0, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->setDefending(B)V

    goto :goto_1

    .line 296
    :cond_4
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->val$training:Lpl/mkrstudio/truefootball3/objects/Training;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v0, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->setAttacking(B)V

    goto :goto_1

    .line 293
    :cond_5
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->val$training:Lpl/mkrstudio/truefootball3/objects/Training;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v0, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->setBallPossession(B)V

    goto :goto_1

    .line 290
    :cond_6
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->val$training:Lpl/mkrstudio/truefootball3/objects/Training;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v0, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->setSetPieces(B)V

    goto :goto_1

    .line 287
    :cond_7
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->val$training:Lpl/mkrstudio/truefootball3/objects/Training;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v0, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->setFitness(B)V

    .line 305
    :goto_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->val$training:Lpl/mkrstudio/truefootball3/objects/Training;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getSum(I)I

    move-result p1

    const/16 v0, 0x1d

    if-ne p1, v0, :cond_8

    .line 306
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;->val$valuePickers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 307
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->enableRightButton()V

    goto :goto_2

    :cond_8
    return-void
.end method
