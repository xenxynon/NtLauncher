.class public final Lo5/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lz5/a;


# static fields
.field public static final g:Lo5/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo5/u;

    invoke-direct {v0}, Lo5/u;-><init>()V

    sput-object v0, Lo5/u;->g:Lo5/u;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()Ljava/lang/Void;
    .locals 0

    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public c()Ljava/lang/Void;
    .locals 0

    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasPrevious()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lo5/u;->b()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public nextIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lo5/u;->c()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public previousIndex()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
