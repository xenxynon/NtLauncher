.class Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/LauncherPreviewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherPreviewAppWidgetHost"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHost;->this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    const/16 p1, 0x400

    invoke-direct {p0, p2, p1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Landroid/content/Context;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHost;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 0

    new-instance p1, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHostView;

    iget-object p0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHost;->this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$1;)V

    return-object p1
.end method
