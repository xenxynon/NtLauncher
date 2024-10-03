.class public Ly0/b;
.super Landroid/graphics/drawable/shapes/PathShape;
.source "SourceFile"


# instance fields
.field private g:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    iput-object p1, p0, Ly0/b;->g:Landroid/graphics/Path;

    return-void
.end method

.method public static a(FFZ)Ly0/b;
    .locals 3

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    div-float p2, p0, v1

    invoke-virtual {v0, p2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    div-float p2, p0, v1

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, p0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    new-instance p2, Ly0/b;

    invoke-direct {p2, v0, p0, p1}, Ly0/b;-><init>(Landroid/graphics/Path;FF)V

    return-object p2
.end method

.method public static b(FFZ)Ly0/b;
    .locals 3

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    div-float p2, p1, v1

    invoke-virtual {v0, v2, p2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, p0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, p1}, Landroid/graphics/Path;->moveTo(FF)V

    div-float p2, p1, v1

    invoke-virtual {v0, p0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    new-instance p2, Ly0/b;

    invoke-direct {p2, v0, p0, p1}, Ly0/b;-><init>(Landroid/graphics/Path;FF)V

    return-object p2
.end method


# virtual methods
.method public bridge synthetic clone()Landroid/graphics/drawable/shapes/Shape;
    .locals 0

    invoke-super {p0}, Landroid/graphics/drawable/shapes/PathShape;->clone()Landroid/graphics/drawable/shapes/PathShape;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Landroid/graphics/drawable/shapes/PathShape;->clone()Landroid/graphics/drawable/shapes/PathShape;

    move-result-object p0

    return-object p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 0
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Ly0/b;->g:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    return-void
.end method
