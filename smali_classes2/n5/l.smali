.class public final Ln5/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln5/l$a;,
        Ln5/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final h:Ln5/l$a;


# instance fields
.field private final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln5/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln5/l$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Ln5/l;->h:Ln5/l$a;

    return-void
.end method

.method private synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/l;->g:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a(Ljava/lang/Object;)Ln5/l;
    .locals 1

    new-instance v0, Ln5/l;

    invoke-direct {v0, p0}, Ln5/l;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
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

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ln5/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ln5/l;

    invoke-virtual {p1}, Ln5/l;->i()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    instance-of v0, p0, Ln5/l$b;

    if-eqz v0, :cond_0

    check-cast p0, Ln5/l$b;

    iget-object p0, p0, Ln5/l$b;->g:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static e(Ljava/lang/Object;)I
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

.method public static final f(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ln5/l$b;

    return p0
.end method

.method public static final g(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ln5/l$b;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static h(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    instance-of v0, p0, Ln5/l$b;

    if-eqz v0, :cond_0

    check-cast p0, Ln5/l$b;

    invoke-virtual {p0}, Ln5/l$b;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Success("

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

    iget-object p0, p0, Ln5/l;->g:Ljava/lang/Object;

    invoke-static {p0, p1}, Ln5/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Ln5/l;->g:Ljava/lang/Object;

    invoke-static {p0}, Ln5/l;->e(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final synthetic i()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ln5/l;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln5/l;->g:Ljava/lang/Object;

    invoke-static {p0}, Ln5/l;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
