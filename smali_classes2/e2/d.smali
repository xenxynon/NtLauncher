.class public final Le2/d;
.super Le2/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/d$a;
    }
.end annotation


# static fields
.field public static final m:Le2/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le2/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le2/d$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Le2/d;->m:Le2/d$a;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Le2/s;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method private final M(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    instance-of p0, p1, Landroid/widget/Chronometer;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/widget/Chronometer;

    invoke-static {p2}, Lv1/a;->h(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    sget-object p0, Lh2/a;->a:Lh2/a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBase value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SimulatedChronometer"

    invoke-virtual {p0, p2, p1}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final N(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    instance-of p0, p1, Landroid/widget/Chronometer;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/widget/Chronometer;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    sget-object p0, Lh2/a;->a:Lh2/a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setFormat value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SimulatedChronometer"

    invoke-virtual {p0, p2, p1}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final O(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    instance-of p0, p1, Landroid/widget/Chronometer;

    if-eqz p0, :cond_1

    invoke-static {p2}, Lv1/a;->e(Ljava/lang/Object;)I

    move-result p0

    check-cast p1, Landroid/widget/Chronometer;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/widget/Chronometer;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/Chronometer;->stop()V

    :goto_0
    sget-object p0, Lh2/a;->a:Lh2/a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setStarted value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SimulatedChronometer"

    invoke-virtual {p0, p2, p1}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xcac4ef9

    if-eq v0, v1, :cond_3

    const v1, 0x4029c9bf

    if-eq v0, v1, :cond_1

    const v1, 0x76483653

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "setBase"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p3}, Le2/d;->M(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v0, "setStarted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p3}, Le2/d;->O(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string v0, "setFormat"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Le2/s;->p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_5

    return-object p0

    :cond_5
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_6
    invoke-direct {p0, p1, p3}, Le2/d;->N(Landroid/view/View;Ljava/lang/Object;)V

    :goto_1
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
