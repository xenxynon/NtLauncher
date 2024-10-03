.class public final Lv3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/b$a;
    }
.end annotation


# static fields
.field public static final d:Lv3/b$a;


# instance fields
.field private final a:I

.field private b:Z

.field private final c:Lv3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv3/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv3/b$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lv3/b;->d:Lv3/b$a;

    return-void
.end method

.method public constructor <init>(IZLv3/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv3/b;->a:I

    iput-boolean p2, p0, Lv3/b;->b:Z

    iput-object p3, p0, Lv3/b;->c:Lv3/a;

    return-void
.end method

.method private final c()Z
    .locals 1

    iget p0, p0, Lv3/b;->a:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final d()Z
    .locals 1

    iget p0, p0, Lv3/b;->a:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a()Lv3/a;
    .locals 0

    iget-object p0, p0, Lv3/b;->c:Lv3/a;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lv3/b;->b:Z

    return p0
.end method

.method public final e()Z
    .locals 1

    iget p0, p0, Lv3/b;->a:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lv3/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lv3/b;

    iget v1, p0, Lv3/b;->a:I

    iget v3, p1, Lv3/b;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lv3/b;->b:Z

    iget-boolean v3, p1, Lv3/b;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lv3/b;->c:Lv3/a;

    iget-object p1, p1, Lv3/b;->c:Lv3/a;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final f()Z
    .locals 0

    iget p0, p0, Lv3/b;->a:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Lv3/b;->b:Z

    return-void
.end method

.method public final h()Z
    .locals 1

    invoke-direct {p0}, Lv3/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lv3/b;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lv3/b;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lv3/b;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lv3/b;->c:Lv3/a;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lv3/a;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IconPackInfo(requestType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lv3/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", usePreloadedIconPackStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lv3/b;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", iconPackEntity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lv3/b;->c:Lv3/a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
