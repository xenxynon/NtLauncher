.class public final synthetic Lcom/android/searchlauncher/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;


# static fields
.field public static final synthetic a:Lcom/android/searchlauncher/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/searchlauncher/e;

    invoke-direct {v0}, Lcom/android/searchlauncher/e;-><init>()V

    sput-object v0, Lcom/android/searchlauncher/e;->a:Lcom/android/searchlauncher/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newView(Landroid/content/Context;)Lcom/android/launcher3/qsb/QsbWidgetHostView;
    .locals 0

    invoke-static {p1}, Lcom/android/searchlauncher/SmartspaceQsbWidget$SmartSpaceFragment;->d(Landroid/content/Context;)Lcom/android/launcher3/qsb/QsbWidgetHostView;

    move-result-object p0

    return-object p0
.end method
