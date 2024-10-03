.class public final synthetic Lcom/android/launcher3/uioverrides/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/uioverrides/e0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/uioverrides/e0;

    invoke-direct {v0}, Lcom/android/launcher3/uioverrides/e0;-><init>()V

    sput-object v0, Lcom/android/launcher3/uioverrides/e0;->a:Lcom/android/launcher3/uioverrides/e0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/appwidget/AppWidgetHostView;

    check-cast p2, Landroid/widget/RemoteViews;

    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method
