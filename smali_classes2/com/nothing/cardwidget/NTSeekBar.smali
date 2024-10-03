.class public final Lcom/nothing/cardwidget/NTSeekBar;
.super Landroid/widget/SeekBar;
.source "SourceFile"

# interfaces
.implements Lcom/nothing/cardwidget/IWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/NTSeekBar$Companion;,
        Lcom/nothing/cardwidget/NTSeekBar$H;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nothing/cardwidget/NTSeekBar$Companion;

.field private static final MSG_PROGRESS_CALLBACK:I = 0x0

.field public static final RESULT_PROGRESS:Ljava/lang/String; = "result_progress"


# instance fields
.field private final mH:Lcom/nothing/cardwidget/NTSeekBar$H;

.field private mSeekBarListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private reactDelay:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardwidget/NTSeekBar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/NTSeekBar$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardwidget/NTSeekBar;->Companion:Lcom/nothing/cardwidget/NTSeekBar$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/nothing/cardwidget/NTSeekBar$H;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "getMainLooper()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/nothing/cardwidget/NTSeekBar$H;-><init>(Lcom/nothing/cardwidget/NTSeekBar;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nothing/cardwidget/NTSeekBar;->mH:Lcom/nothing/cardwidget/NTSeekBar$H;

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    const-string v1, "react_delay"

    invoke-virtual {v0, p1, v1}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nothing/cardwidget/R$attr;->react_delay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    invoke-static {v1}, Lo5/d0;->c(Ln5/k;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lk2/a$a;->k(Landroid/util/AttributeSet;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    sget v3, Lcom/nothing/cardwidget/R$attr;->react_delay:I

    if-ne v2, v3, :cond_0

    sget-object v2, Lk2/a;->a:Lk2/a$a;

    invoke-static {p2}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v1, v3}, Lk2/a$a;->i(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nothing/cardwidget/NTSeekBar;->setReactDelay(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/nothing/cardwidget/NTSeekBar$2;

    invoke-direct {p1, p0}, Lcom/nothing/cardwidget/NTSeekBar$2;-><init>(Lcom/nothing/cardwidget/NTSeekBar;)V

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public static final synthetic access$getMH$p(Lcom/nothing/cardwidget/NTSeekBar;)Lcom/nothing/cardwidget/NTSeekBar$H;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/NTSeekBar;->mH:Lcom/nothing/cardwidget/NTSeekBar$H;

    return-object p0
.end method

.method public static final synthetic access$getMSeekBarListener$p(Lcom/nothing/cardwidget/NTSeekBar;)Ljava/util/function/Consumer;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/NTSeekBar;->mSeekBarListener:Ljava/util/function/Consumer;

    return-object p0
.end method


# virtual methods
.method public final getReactDelay()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/NTSeekBar;->reactDelay:I

    return p0
.end method

.method public getReactDelay()J
    .locals 2

    iget p0, p0, Lcom/nothing/cardwidget/NTSeekBar;->reactDelay:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public send(Landroid/os/Message;)V
    .locals 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/nothing/cardwidget/NTSeekBar;->getReactDelay()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public send(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/cardwidget/IWidget$DefaultImpls;->send(Lcom/nothing/cardwidget/IWidget;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setReactDelay(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardwidget/NTSeekBar;->reactDelay:I

    return-void
.end method

.method public final setSeekBarListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/NTSeekBar;->mSeekBarListener:Ljava/util/function/Consumer;

    return-void
.end method
