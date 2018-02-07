#ifndef APPMODEL_H
#define APPMODEL_H

#include <QObject>

class AppModel : public QObject
{
    Q_OBJECT
    Q_PROPERTY(State state
               READ GetState
               NOTIFY StateChanged)
public:
    enum class State
    {
        loading = 0,
        ready
    };
    Q_ENUM(State)
public:
    explicit AppModel(QObject *parent = 0);
    ~AppModel(void) {}
    inline State GetState(void) const { return state; }
signals:
    void StateChanged(void);
private:
    State state = State::loading;
};

Q_DECLARE_METATYPE(AppModel::State)

#endif // APPMODEL_H
