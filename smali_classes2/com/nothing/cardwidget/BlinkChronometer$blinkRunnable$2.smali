.class final Lcom/nothing/cardwidget/BlinkChronometer$blinkRunnable$2;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/BlinkChronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nothing/cardwidget/BlinkChronometer;


# direct methods
.method constructor <init>(Lcom/nothing/cardwidget/BlinkChronometer;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/BlinkChronometer$blinkRunnable$2;->this$0:Lcom/nothing/cardwidget/BlinkChronometer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/nothing/cardwidget/BlinkChronometer;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/cardwidget/BlinkChronometer$blinkRunnable$2;->invoke$lambda-0(Lcom/nothing/cardwidget/BlinkChronometer;)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcom/nothing/cardwidget/BlinkChronometer;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/nothing/cardwidget/BlinkChronometer;->access$makeTextBlink(Lcom/nothing/cardwidget/BlinkChronometer;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/cardwidget/BlinkChronometer$blinkRunnable$2;->invoke()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/Runnable;
    .locals 1

    iget-object p0, p0, Lcom/nothing/cardwidget/BlinkChronometer$blinkRunnable$2;->this$0:Lcom/nothing/cardwidget/BlinkChronometer;

    new-instance v0, Lcom/nothing/cardwidget/a;

    invoke-direct {v0, p0}, Lcom/nothing/cardwidget/a;-><init>(Lcom/nothing/cardwidget/BlinkChronometer;)V

    return-object v0
.end method
