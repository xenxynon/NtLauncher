.class public final synthetic Lc0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic a:Lc0/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    sput-object v0, Lc0/a;->a:Lc0/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->a(Landroid/content/Context;)Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    move-result-object p0

    return-object p0
.end method
