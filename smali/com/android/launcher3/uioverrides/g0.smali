.class public final synthetic Lcom/android/launcher3/uioverrides/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;


# static fields
.field public static final synthetic g:Lcom/android/launcher3/uioverrides/g0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/uioverrides/g0;

    invoke-direct {v0}, Lcom/android/launcher3/uioverrides/g0;-><init>()V

    sput-object v0, Lcom/android/launcher3/uioverrides/g0;->g:Lcom/android/launcher3/uioverrides/g0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyWidgetProvidersChanged()V
    .locals 0

    invoke-static {}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->i()V

    return-void
.end method
