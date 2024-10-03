.class public final Lk6/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk6/j$c;,
        Lk6/j$a;,
        Lk6/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final b:Lk6/j$b;

.field private static final c:Lk6/j$c;


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk6/j$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk6/j$b;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lk6/j;->b:Lk6/j$b;

    new-instance v0, Lk6/j$c;

    invoke-direct {v0}, Lk6/j$c;-><init>()V

    sput-object v0, Lk6/j;->c:Lk6/j$c;

    return-void
.end method

.method private synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk6/j;->a:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a()Lk6/j$c;
    .locals 1

    sget-object v0, Lk6/j;->c:Lk6/j$c;

    return-object v0
.end method

.method public static final synthetic b(Ljava/lang/Object;)Lk6/j;
    .locals 1

    new-instance v0, Lk6/j;

    invoke-direct {v0, p0}, Lk6/j;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    return-object p0
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lk6/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lk6/j;

    invoke-virtual {p1}, Lk6/j;->l()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    instance-of v0, p0, Lk6/j$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lk6/j$a;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lk6/j$a;->a:Ljava/lang/Throwable;

    :goto_1
    return-object v1
.end method

.method public static final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p0, Lk6/j$c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p0, Lk6/j$c;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, Lk6/j$a;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lk6/j$a;

    iget-object v0, v0, Lk6/j$a;->a:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call \'getOrThrow\' on a failed channel result: "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static h(Ljava/lang/Object;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final i(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lk6/j$a;

    return p0
.end method

.method public static final j(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lk6/j$c;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static k(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    instance-of v0, p0, Lk6/j$a;

    if-eqz v0, :cond_0

    check-cast p0, Lk6/j$a;

    invoke-virtual {p0}, Lk6/j$a;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lk6/j;->a:Ljava/lang/Object;

    invoke-static {p0, p1}, Lk6/j;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lk6/j;->a:Ljava/lang/Object;

    invoke-static {p0}, Lk6/j;->h(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final synthetic l()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lk6/j;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lk6/j;->a:Ljava/lang/Object;

    invoke-static {p0}, Lk6/j;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
