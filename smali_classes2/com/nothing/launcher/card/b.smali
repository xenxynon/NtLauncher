.class public final Lcom/nothing/launcher/card/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/nothing/launcher/card/b;

.field private static final b:Ln5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nothing/launcher/card/b;

    invoke-direct {v0}, Lcom/nothing/launcher/card/b;-><init>()V

    sput-object v0, Lcom/nothing/launcher/card/b;->a:Lcom/nothing/launcher/card/b;

    sget-object v0, Lcom/nothing/launcher/card/b$a;->g:Lcom/nothing/launcher/card/b$a;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    sput-object v0, Lcom/nothing/launcher/card/b;->b:Ln5/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/nothing/cardhost/d;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/nothing/launcher/card/b;->b:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILjava/lang/Class;)Lcom/nothing/cardhost/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/nothing/cardhost/d;"
        }
    .end annotation

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nothing/launcher/card/b;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/cardhost/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/nothing/launcher/card/p;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Lcom/nothing/launcher/card/p;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p3, p1, v1, v0, v1}, Lcom/nothing/launcher/card/p;-><init>(Landroid/content/Context;Ly5/l;ILkotlin/jvm/internal/i;)V

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/nothing/cardhost/d;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/nothing/cardhost/d;-><init>(Landroid/content/Context;ILw1/a;ILkotlin/jvm/internal/i;)V

    :goto_0
    move-object v0, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0}, Lcom/nothing/launcher/card/b;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
