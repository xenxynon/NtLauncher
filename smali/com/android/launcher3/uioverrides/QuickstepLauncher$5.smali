.class synthetic Lcom/android/launcher3/uioverrides/QuickstepLauncher$5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/uioverrides/QuickstepLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$launcher3$util$NavigationMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/launcher3/util/NavigationMode;->values()[Lcom/android/launcher3/util/NavigationMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$5;->$SwitchMap$com$android$launcher3$util$NavigationMode:[I

    :try_start_0
    sget-object v1, Lcom/android/launcher3/util/NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/NavigationMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$5;->$SwitchMap$com$android$launcher3$util$NavigationMode:[I

    sget-object v1, Lcom/android/launcher3/util/NavigationMode;->TWO_BUTTONS:Lcom/android/launcher3/util/NavigationMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$5;->$SwitchMap$com$android$launcher3$util$NavigationMode:[I

    sget-object v1, Lcom/android/launcher3/util/NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/NavigationMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
