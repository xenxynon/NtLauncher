.class public final synthetic Lcom/android/launcher3/graphics/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;

.field public final synthetic h:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

.field public final synthetic i:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/q;->g:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;

    iput-object p2, p0, Lcom/android/launcher3/graphics/q;->h:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    iput-object p3, p0, Lcom/android/launcher3/graphics/q;->i:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/graphics/q;->g:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;

    iget-object v1, p0, Lcom/android/launcher3/graphics/q;->h:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    iget-object p0, p0, Lcom/android/launcher3/graphics/q;->i:Landroid/util/SparseArray;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->e(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/util/SparseArray;)V

    return-void
.end method
