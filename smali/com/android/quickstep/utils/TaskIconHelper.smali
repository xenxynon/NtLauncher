.class public final Lcom/android/quickstep/utils/TaskIconHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COLOR_DARK:I = 0x0

.field public static final COLOR_LIGHT:I = 0x1

.field public static final COLOR_UNDEFINE:I = -0x1

.field private static final COMPONENT_COLOR_CONFIG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/android/quickstep/utils/TaskIconHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/quickstep/utils/TaskIconHelper;

    invoke-direct {v0}, Lcom/android/quickstep/utils/TaskIconHelper;-><init>()V

    sput-object v0, Lcom/android/quickstep/utils/TaskIconHelper;->INSTANCE:Lcom/android/quickstep/utils/TaskIconHelper;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.android.settings/com.android.settings.Settings$WifiTetherSettingsActivity"

    invoke-static {v1, v0}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v0

    invoke-static {v0}, Lo5/d0;->c(Ln5/k;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/utils/TaskIconHelper;->COMPONENT_COLOR_CONFIG:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCustomColor(Landroid/content/ComponentName;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/quickstep/utils/TaskIconHelper;->getCustomColor$default(Landroid/content/ComponentName;IILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final getCustomColor(Landroid/content/ComponentName;I)I
    .locals 3

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/quickstep/utils/TaskIconHelper;->COMPONENT_COLOR_CONFIG:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "StringBuilder(it.package\u2026(it.className).toString()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static synthetic getCustomColor$default(Landroid/content/ComponentName;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p0, p1}, Lcom/android/quickstep/utils/TaskIconHelper;->getCustomColor(Landroid/content/ComponentName;I)I

    move-result p0

    return p0
.end method
