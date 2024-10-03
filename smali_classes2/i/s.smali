.class public final synthetic Li/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/views/ActivityContext;

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Landroid/graphics/Canvas;

.field public final synthetic k:Landroid/graphics/Canvas;

.field public final synthetic l:Landroid/graphics/Canvas;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/ActivityContext;IILandroid/graphics/Canvas;Landroid/graphics/Canvas;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/s;->g:Lcom/android/launcher3/views/ActivityContext;

    iput p2, p0, Li/s;->h:I

    iput p3, p0, Li/s;->i:I

    iput-object p4, p0, Li/s;->j:Landroid/graphics/Canvas;

    iput-object p5, p0, Li/s;->k:Landroid/graphics/Canvas;

    iput-object p6, p0, Li/s;->l:Landroid/graphics/Canvas;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Li/s;->g:Lcom/android/launcher3/views/ActivityContext;

    iget v1, p0, Li/s;->h:I

    iget v2, p0, Li/s;->i:I

    iget-object v3, p0, Li/s;->j:Landroid/graphics/Canvas;

    iget-object v4, p0, Li/s;->k:Landroid/graphics/Canvas;

    iget-object v5, p0, Li/s;->l:Landroid/graphics/Canvas;

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->d(Lcom/android/launcher3/views/ActivityContext;IILandroid/graphics/Canvas;Landroid/graphics/Canvas;Landroid/graphics/Canvas;)V

    return-void
.end method
