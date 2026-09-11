.class Lpl/mkrstudio/truefootball3/views/ValuePicker$10;
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
.method constructor <init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;Lpl/mkrstudio/truefootball3/objects/Training;ILandroid/widget/EditText;BLjava/util/List;)V
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
            "val$training",
            "val$modifier",
            "val$et",
            "val$i",
            "val$valuePickers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 315
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->val$training:Lpl/mkrstudio/truefootball3/objects/Training;

    iput p3, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->val$modifier:I

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->val$et:Landroid/widget/EditText;

    iput-byte p5, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->val$i:B

    iput-object p6, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->val$valuePickers:Ljava/util/List;

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

    .line 318
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->val$training:Lpl/mkrstudio/truefootball3/objects/Training;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getSum(I)I

    move-result p1

    const/16 v1, 0x1e

    if-ge p1, v1, :cond_7

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v2, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    const-wide/16 v4, 0xa

    cmp-long p1, v2, v4

    if-gez p1, :cond_7

    .line 319
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v2, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    .line 320
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->enableLeftButton()V

    .line 321
    iget p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->val$modifier:I

    if-lez p1, :cond_0

    .line 322
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->val$et:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v3, v3, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->val$modifier:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 324
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->val$et:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v3, v3, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :goto_0
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->val$i:B

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    goto :goto_1

    .line 343
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->val$training:Lpl/mkrstudio/truefootball3/objects/Training;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object p1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v2, v2, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {p1, v2}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->setMental(B)V

    goto :goto_1

    .line 340
    :cond_2
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->val$training:Lpl/mkrstudio/truefootball3/objects/Training;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object p1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v2, v2, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {p1, v2}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->setDefending(B)V

    goto :goto_1

    .line 337
    :cond_3
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->val$training:Lpl/mkrstudio/truefootball3/objects/Training;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object p1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v2, v2, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {p1, v2}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->setAttacking(B)V

    goto :goto_1

    .line 334
    :cond_4
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->val$training:Lpl/mkrstudio/truefootball3/objects/Training;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object p1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v2, v2, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {p1, v2}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->setBallPossession(B)V

    goto :goto_1

    .line 331
    :cond_5
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->val$training:Lpl/mkrstudio/truefootball3/objects/Training;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object p1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v2, v2, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {p1, v2}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->setSetPieces(B)V

    goto :goto_1

    .line 328
    :cond_6
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->val$training:Lpl/mkrstudio/truefootball3/objects/Training;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object p1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v2, v2, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {p1, v2}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->setFitness(B)V

    .line 346
    :goto_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->val$training:Lpl/mkrstudio/truefootball3/objects/Training;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getSum(I)I

    move-result p1

    if-ne p1, v1, :cond_7

    .line 347
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;->val$valuePickers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 348
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->disableRightButton()V

    goto :goto_2

    :cond_7
    return-void
.end method
