.class public final synthetic Lcom/android/launcher3/graphics/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/h;->g:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    iput-boolean p2, p0, Lcom/android/launcher3/graphics/h;->h:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/graphics/h;->g:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    iget-boolean p0, p0, Lcom/android/launcher3/graphics/h;->h:Z

    invoke-static {v0, p0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->b(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Z)V

    return-void
.end method
