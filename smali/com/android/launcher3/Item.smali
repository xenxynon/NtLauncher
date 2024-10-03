.class public abstract Lcom/android/launcher3/Item;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSharedPrefFile()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/Item;->isBackedUp()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.android.launcher3.prefs"

    goto :goto_0

    :cond_0
    const-string p0, "com.android.launcher3.device.prefs"

    :goto_0
    return-object p0
.end method

.method public abstract getSharedPrefKey()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract isBackedUp()Z
.end method

.method public abstract isBootAware()Z
.end method

.method public final to(Ljava/lang/Object;)Ln5/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ln5/k<",
            "Lcom/android/launcher3/Item;",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ln5/k;

    invoke-direct {v0, p0, p1}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
