.class public final Le4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private g:Le4/b;

.field private h:Le4/a;


# direct methods
.method private constructor <init>(Le4/b;Le4/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le4/a;->g:Le4/b;

    iput-object p2, p0, Le4/a;->h:Le4/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Point;)V
    .locals 2

    const-string v0, "screenId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le4/b;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, p1, v1, p2}, Le4/b;-><init>(Ljava/lang/String;II)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Le4/a;-><init>(Le4/b;Le4/a;)V

    return-void
.end method


# virtual methods
.method public a()Le4/a;
    .locals 2

    new-instance v0, Le4/a;

    iget-object v1, p0, Le4/a;->g:Le4/b;

    invoke-virtual {v1}, Le4/b;->b()Le4/b;

    move-result-object v1

    iget-object p0, p0, Le4/a;->h:Le4/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Le4/a;->a()Le4/a;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v0, v1, p0}, Le4/a;-><init>(Le4/b;Le4/a;)V

    return-object v0
.end method

.method public final b()Le4/b;
    .locals 0

    iget-object p0, p0, Le4/a;->g:Le4/b;

    return-object p0
.end method

.method public final c()Le4/a;
    .locals 0

    iget-object p0, p0, Le4/a;->h:Le4/a;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Le4/a;->a()Le4/a;

    move-result-object p0

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Le4/a;->h:Le4/a;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e(Le4/b;)V
    .locals 1

    const-string v0, "occupancy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le4/a;->g:Le4/b;

    return-void
.end method

.method public final f(Le4/a;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le4/a;->h:Le4/a;

    return-void
.end method

.method public final g(Lb4/a;)V
    .locals 1

    const-string v0, "favoriteItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Le4/a;->g:Le4/b;

    invoke-virtual {p0, p1}, Le4/b;->f(Lb4/a;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Le4/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " {occupancy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le4/a;->g:Le4/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nextNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Le4/a;->h:Le4/a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
