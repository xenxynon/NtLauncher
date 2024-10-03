.class public final Lcom/nothing/cardwidget/pedometer/MonthStepsData;
.super Lcom/nothing/cardwidget/pedometer/PedometerData;
.source "SourceFile"


# instance fields
.field private final monthStepsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lm1/c;
        value = "monthStepsList"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "monthStepsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nothing/cardwidget/pedometer/PedometerData;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/pedometer/MonthStepsData;->monthStepsList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getMonthStepsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/nothing/cardwidget/pedometer/MonthStepsData;->monthStepsList:Ljava/util/List;

    return-object p0
.end method
