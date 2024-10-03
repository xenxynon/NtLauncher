.class public final synthetic Lcom/android/quickstep/m7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:I

.field public final synthetic h:[Landroid/graphics/Matrix;

.field public final synthetic i:[Landroid/graphics/Matrix;

.field public final synthetic j:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

.field public final synthetic k:[Landroid/graphics/Matrix;

.field public final synthetic l:Landroid/graphics/Matrix;

.field public final synthetic m:[Lcom/android/quickstep/views/TaskThumbnailView;

.field public final synthetic n:[Z


# direct methods
.method public synthetic constructor <init>(I[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;[Landroid/graphics/Matrix;Landroid/graphics/Matrix;[Lcom/android/quickstep/views/TaskThumbnailView;[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/m7;->g:I

    iput-object p2, p0, Lcom/android/quickstep/m7;->h:[Landroid/graphics/Matrix;

    iput-object p3, p0, Lcom/android/quickstep/m7;->i:[Landroid/graphics/Matrix;

    iput-object p4, p0, Lcom/android/quickstep/m7;->j:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    iput-object p5, p0, Lcom/android/quickstep/m7;->k:[Landroid/graphics/Matrix;

    iput-object p6, p0, Lcom/android/quickstep/m7;->l:Landroid/graphics/Matrix;

    iput-object p7, p0, Lcom/android/quickstep/m7;->m:[Lcom/android/quickstep/views/TaskThumbnailView;

    iput-object p8, p0, Lcom/android/quickstep/m7;->n:[Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/android/quickstep/m7;->g:I

    iget-object v1, p0, Lcom/android/quickstep/m7;->h:[Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/quickstep/m7;->i:[Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/quickstep/m7;->j:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    iget-object v4, p0, Lcom/android/quickstep/m7;->k:[Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/quickstep/m7;->l:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/quickstep/m7;->m:[Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v7, p0, Lcom/android/quickstep/m7;->n:[Z

    invoke-static/range {v0 .. v7}, Lcom/android/quickstep/TaskViewUtils;->a(I[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;[Landroid/graphics/Matrix;Landroid/graphics/Matrix;[Lcom/android/quickstep/views/TaskThumbnailView;[Z)V

    return-void
.end method
