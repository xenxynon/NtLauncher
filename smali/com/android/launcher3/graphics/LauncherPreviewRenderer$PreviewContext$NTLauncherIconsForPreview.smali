.class final Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext$NTLauncherIconsForPreview;
.super Ls2/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NTLauncherIconsForPreview"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/content/Context;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext$NTLauncherIconsForPreview;->this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-direct {p0, p2, p3, p4, p5}, Ls2/a;-><init>(Landroid/content/Context;III)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/content/Context;IIILcom/android/launcher3/graphics/LauncherPreviewRenderer$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext$NTLauncherIconsForPreview;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/content/Context;III)V

    return-void
.end method


# virtual methods
.method public recycle()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext$NTLauncherIconsForPreview;->this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-static {v0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;->access$300(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
