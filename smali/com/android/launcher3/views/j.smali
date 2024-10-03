.class public final synthetic Lcom/android/launcher3/views/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:J

.field public final synthetic h:Lcom/android/launcher3/Launcher;

.field public final synthetic i:Landroid/view/View;

.field public final synthetic j:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic k:Landroid/graphics/RectF;

.field public final synthetic l:Lcom/android/launcher3/icons/FastBitmapDrawable;

.field public final synthetic m:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;


# direct methods
.method public synthetic constructor <init>(JLcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Lcom/android/launcher3/icons/FastBitmapDrawable;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/launcher3/views/j;->g:J

    iput-object p3, p0, Lcom/android/launcher3/views/j;->h:Lcom/android/launcher3/Launcher;

    iput-object p4, p0, Lcom/android/launcher3/views/j;->i:Landroid/view/View;

    iput-object p5, p0, Lcom/android/launcher3/views/j;->j:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p6, p0, Lcom/android/launcher3/views/j;->k:Landroid/graphics/RectF;

    iput-object p7, p0, Lcom/android/launcher3/views/j;->l:Lcom/android/launcher3/icons/FastBitmapDrawable;

    iput-object p8, p0, Lcom/android/launcher3/views/j;->m:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-wide v0, p0, Lcom/android/launcher3/views/j;->g:J

    iget-object v2, p0, Lcom/android/launcher3/views/j;->h:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/views/j;->i:Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher3/views/j;->j:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v5, p0, Lcom/android/launcher3/views/j;->k:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/launcher3/views/j;->l:Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object v7, p0, Lcom/android/launcher3/views/j;->m:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/views/FloatingIconView;->f(JLcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Lcom/android/launcher3/icons/FastBitmapDrawable;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;)V

    return-void
.end method
