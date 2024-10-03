.class public final Ln1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ll1/f<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lq1/b;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ll1/f<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lq1/b;->a()Lq1/b;

    move-result-object v0

    iput-object v0, p0, Ln1/c;->b:Lq1/b;

    iput-object p1, p0, Ln1/c;->a:Ljava/util/Map;

    return-void
.end method

.method private b(Ljava/lang/Class;)Ln1/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Ln1/i<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ln1/c;->b:Lq1/b;

    invoke-virtual {v0, p1}, Lq1/b;->b(Ljava/lang/reflect/AccessibleObject;)V

    :cond_0
    new-instance v0, Ln1/c$h;

    invoke-direct {v0, p0, p1}, Ln1/c$h;-><init>(Ln1/c;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private c(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ln1/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Ln1/i<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ln1/c$i;

    invoke-direct {p1, p0}, Ln1/c$i;-><init>(Ln1/c;)V

    return-object p1

    :cond_0
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p2, Ln1/c$j;

    invoke-direct {p2, p0, p1}, Ln1/c$j;-><init>(Ln1/c;Ljava/lang/reflect/Type;)V

    return-object p2

    :cond_1
    const-class p1, Ljava/util/Set;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ln1/c$k;

    invoke-direct {p1, p0}, Ln1/c$k;-><init>(Ln1/c;)V

    return-object p1

    :cond_2
    const-class p1, Ljava/util/Queue;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ln1/c$l;

    invoke-direct {p1, p0}, Ln1/c$l;-><init>(Ln1/c;)V

    return-object p1

    :cond_3
    new-instance p1, Ln1/c$m;

    invoke-direct {p1, p0}, Ln1/c$m;-><init>(Ln1/c;)V

    return-object p1

    :cond_4
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-class v0, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p1, Ln1/c$n;

    invoke-direct {p1, p0}, Ln1/c$n;-><init>(Ln1/c;)V

    return-object p1

    :cond_5
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Ln1/c$a;

    invoke-direct {p1, p0}, Ln1/c$a;-><init>(Ln1/c;)V

    return-object p1

    :cond_6
    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p1, Ln1/c$b;

    invoke-direct {p1, p0}, Ln1/c$b;-><init>(Ln1/c;)V

    return-object p1

    :cond_7
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_8

    const-class p2, Ljava/lang/String;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Lr1/a;->b(Ljava/lang/reflect/Type;)Lr1/a;

    move-result-object p1

    invoke-virtual {p1}, Lr1/a;->c()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Ln1/c$c;

    invoke-direct {p1, p0}, Ln1/c$c;-><init>(Ln1/c;)V

    return-object p1

    :cond_8
    new-instance p1, Ln1/c$d;

    invoke-direct {p1, p0}, Ln1/c$d;-><init>(Ln1/c;)V

    return-object p1

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private d(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ln1/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Ln1/i<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ln1/c$e;

    invoke-direct {v0, p0, p2, p1}, Ln1/c$e;-><init>(Ln1/c;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public a(Lr1/a;)Ln1/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lr1/a<",
            "TT;>;)",
            "Ln1/i<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lr1/a;->e()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1}, Lr1/a;->c()Ljava/lang/Class;

    move-result-object p1

    iget-object v1, p0, Ln1/c;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll1/f;

    if-eqz v1, :cond_0

    new-instance p1, Ln1/c$f;

    invoke-direct {p1, p0, v1, v0}, Ln1/c$f;-><init>(Ln1/c;Ll1/f;Ljava/lang/reflect/Type;)V

    return-object p1

    :cond_0
    iget-object v1, p0, Ln1/c;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll1/f;

    if-eqz v1, :cond_1

    new-instance p1, Ln1/c$g;

    invoke-direct {p1, p0, v1, v0}, Ln1/c$g;-><init>(Ln1/c;Ll1/f;Ljava/lang/reflect/Type;)V

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Ln1/c;->b(Ljava/lang/Class;)Ln1/i;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    invoke-direct {p0, v0, p1}, Ln1/c;->c(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ln1/i;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    invoke-direct {p0, v0, p1}, Ln1/c;->d(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ln1/i;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln1/c;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
