.class public final synthetic Lcom/android/launcher3/graphics/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/p;->g:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/p;->g:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-virtual {p0}, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->onDestroy()V

    return-void
.end method
