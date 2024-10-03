.class public final Lcom/android/launcher3/LauncherPrefsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BOOT_AWARE_ITEMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/launcher3/ConstantItem<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static isBootAwareStartupDataEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherPrefsKt;->BOOT_AWARE_ITEMS:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$getBOOT_AWARE_ITEMS$p()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/android/launcher3/LauncherPrefsKt;->BOOT_AWARE_ITEMS:Ljava/util/Set;

    return-object v0
.end method

.method public static final isBootAwareStartupDataEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherPrefsKt;->isBootAwareStartupDataEnabled:Z

    return v0
.end method
