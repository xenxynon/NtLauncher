.class final Ly2/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/g$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ly2/g$f;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ly2/g$a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ly2/g$a;->a:Ljava/util/HashMap;

    new-instance v0, Ly2/g$a$a;

    invoke-direct {v0}, Ly2/g$a$a;-><init>()V

    iput-object v0, p0, Ly2/g$a;->b:Ly2/g$a$a;

    return-void
.end method

.method public static synthetic d(Ly5/l;Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    invoke-static {p0, p1}, Ly2/g$a;->f(Ly5/l;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static final f(Ly5/l;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ly2/g$f;
    .locals 1

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Ly2/g$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ly2/g$a;->e(Ljava/lang/ClassLoader;Ljava/lang/String;)Ly2/g$f;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/Object;)Ly2/g$f;
    .locals 1

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly2/g$a;->c(Ljava/lang/Class;)Ly2/g$f;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/Class;)Ly2/g$f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ly2/g$f;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "clazz.name"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Ly2/g$a;->e(Ljava/lang/ClassLoader;Ljava/lang/String;)Ly2/g$f;

    move-result-object p0

    return-object p0
.end method

.method public e(Ljava/lang/ClassLoader;Ljava/lang/String;)Ly2/g$f;
    .locals 3

    const-string v0, "className"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln5/l;->h:Ln5/l$a;

    if-eqz p1, :cond_1

    iget-object v0, p0, Ly2/g$a;->a:Ljava/util/HashMap;

    sget-object v1, Ly2/g$a$b;->g:Ly2/g$a$b;

    new-instance v2, Ly2/f;

    invoke-direct {v2, v1}, Ly2/f;-><init>(Ly5/l;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cacheClass.computeIfAbse\u2026lassLoader) { HashMap() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly2/g$f;

    if-nez v1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-instance v1, Ly2/g$b;

    const-string v2, "clazz"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Ly2/g$b;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/ClassNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not find class loader from given class name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    sget-object p2, Ln5/l;->h:Ln5/l$a;

    invoke-static {p1}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Ly2/g$a;->b:Ly2/g$a$a;

    invoke-static {p1}, Ln5/l;->f(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move-object p1, p0

    :cond_2
    check-cast p1, Ly2/g$f;

    return-object p1
.end method
