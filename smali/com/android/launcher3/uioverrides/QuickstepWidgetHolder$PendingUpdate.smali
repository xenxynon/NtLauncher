.class Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingUpdate"
.end annotation


# instance fields
.field public final changedViews:Lcom/android/launcher3/util/IntSet;

.field public providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field public remoteViews:Landroid/widget/RemoteViews;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;->changedViews:Lcom/android/launcher3/util/IntSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;-><init>()V

    return-void
.end method
