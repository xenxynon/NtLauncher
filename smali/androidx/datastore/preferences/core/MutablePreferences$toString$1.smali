.class final Landroidx/datastore/preferences/core/MutablePreferences$toString$1;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/preferences/core/MutablePreferences;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Ljava/util/Map$Entry<",
        "Landroidx/datastore/preferences/core/Preferences$Key<",
        "*>;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/datastore/preferences/core/MutablePreferences$toString$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/datastore/preferences/core/MutablePreferences$toString$1;

    invoke-direct {v0}, Landroidx/datastore/preferences/core/MutablePreferences$toString$1;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/core/MutablePreferences$toString$1;->INSTANCE:Landroidx/datastore/preferences/core/MutablePreferences$toString$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    const-string p0, "entry"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v0}, Landroidx/datastore/preferences/core/Preferences$Key;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/core/MutablePreferences$toString$1;->invoke(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
