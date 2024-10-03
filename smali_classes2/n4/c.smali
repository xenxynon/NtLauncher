.class public final synthetic Ln4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lt4/e;

.field public final synthetic h:Ln4/d;

.field public final synthetic i:Landroid/content/Context;

.field public final synthetic j:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;


# direct methods
.method public synthetic constructor <init>(Lt4/e;Ln4/d;Landroid/content/Context;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln4/c;->g:Lt4/e;

    iput-object p2, p0, Ln4/c;->h:Ln4/d;

    iput-object p3, p0, Ln4/c;->i:Landroid/content/Context;

    iput-object p4, p0, Ln4/c;->j:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ln4/c;->g:Lt4/e;

    iget-object v1, p0, Ln4/c;->h:Ln4/d;

    iget-object v2, p0, Ln4/c;->i:Landroid/content/Context;

    iget-object p0, p0, Ln4/c;->j:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-static {v0, v1, v2, p0}, Ln4/d;->a(Lt4/e;Ln4/d;Landroid/content/Context;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V

    return-void
.end method
